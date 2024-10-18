SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= -2
AND p.Score <= 135
AND p.CommentCount <= 32
AND ph.PostHistoryTypeId = 4
AND v.BountyAmount <= 350.0
AND u.Views >= 356
AND c.CreationDate >= 223
AND c.CreationDate <= 572
AND ph.CreationDate <= 834
AND v.CreationDate >= 200
AND v.CreationDate <= 400
AND u.CreationDate <= 1047

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;