SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
posts p
WHERE v.CreationDate <= 565

AND ph.PostId = p.Id
AND c.PostId = p.Id
AND v.PostId = p.Id;