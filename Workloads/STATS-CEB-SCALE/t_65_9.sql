SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= 19
AND p.Score <= 122
AND p.CommentCount <= 12
AND ph.PostHistoryTypeId = 24
AND v.BountyAmount <= 75.0
AND u.Views >= 456
AND c.CreationDate >= 63
AND c.CreationDate <= 635
AND ph.CreationDate <= 1189
AND v.CreationDate >= 514
AND v.CreationDate <= 1212
AND u.CreationDate <= 820

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;