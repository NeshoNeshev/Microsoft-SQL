select p.PartId,p.Description,pn.Quantity as [Required],p.StockQty, iif(o.Delivered =0,op.Quantity,0) as 	Ordered  from Parts as p
left join PartsNeeded as pn on p.PartId = pn.PartId
left join OrderParts as op on op.PartId = p.PartId
left join Orders as o on o.OrderId = op.OrderId 
left join Jobs as j on j.JobId = pn.JobId

where j.Status != 'Finished' and (p.StockQty +iif(o.Delivered =0,op.Quantity,0)<pn.Quantity)
order by PartId