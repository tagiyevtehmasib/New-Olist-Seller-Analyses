


WITH First_Group AS 
(
	SELECT i.seller_id,
	s.seller_city,
	s.seller_state,
	COUNT(i.order_id) AS _total_order,
	SUM(i.price) AS total_revenue
	FROM order_items i
	LEFT JOIN sellers s 
	ON i.seller_id = s.seller_id
	LEFT JOIN orders o
	ON o.order_id = i.order_id
	WHERE o.order_status = 'delivered' AND o.order_purchase_timestamp >= '2018-01-01' AND o.order_purchase_timestamp < '2019-01-01'
	GROUP BY i.seller_id,
	s.seller_city,
	s.seller_state
),
Is_Above_Seller AS
(
	SELECT seller_id,
	seller_city,
	seller_state,
	_total_order,
	total_revenue
	FROM First_Group
)
SELECT seller_id,
seller_city,
seller_state,
total_revenue,
_total_order,
ROUND(total_revenue / _total_order, 0) AS avg_order_value,
CASE 
	WHEN (SELECT SUM(total_revenue) / COUNT(DISTINCT seller_id) FROM Is_Above_Seller) > total_revenue THEN 'ishigh'
	WHEN (SELECT SUM(total_revenue) / COUNT(DISTINCT seller_id) FROM Is_Above_Seller) < total_revenue THEN 'islow'
	END AS is_above_average
FROM Is_Above_Seller















