SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= -8
AND p.Score <= 192
AND p.CommentCount <= 29
AND ph.PostHistoryTypeId = 33
AND v.BountyAmount <= 300.0
AND u.Views >= 2342
AND c.CreationDate >= 304
AND c.CreationDate <= 1196
AND ph.CreationDate <= 922
AND v.CreationDate >= 370
AND v.CreationDate <= 840
AND u.CreationDate <= 806

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;