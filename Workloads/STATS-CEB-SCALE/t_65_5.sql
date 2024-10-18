SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= 0
AND p.Score <= 128
AND p.CommentCount <= 10
AND ph.PostHistoryTypeId = 2
AND v.BountyAmount <= 500.0
AND u.Views >= 635
AND c.CreationDate >= 317
AND c.CreationDate <= 804
AND ph.CreationDate <= 1359
AND v.CreationDate >= 961
AND v.CreationDate <= 1335
AND u.CreationDate <= 316

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;