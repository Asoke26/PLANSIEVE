SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= 73
AND p.Score <= 192
AND p.CommentCount <= 23
AND ph.PostHistoryTypeId = 4
AND v.BountyAmount <= 350.0
AND u.Views >= 78
AND c.CreationDate >= 1103
AND c.CreationDate <= 1327
AND ph.CreationDate <= 472
AND v.CreationDate >= 408
AND v.CreationDate <= 1499
AND u.CreationDate <= 1083

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;