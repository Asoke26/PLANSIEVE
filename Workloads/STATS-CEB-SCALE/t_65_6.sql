SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= -3
AND p.Score <= 42
AND p.CommentCount <= 35
AND ph.PostHistoryTypeId = 1
AND v.BountyAmount <= 350.0
AND u.Views >= 62
AND c.CreationDate >= 130
AND c.CreationDate <= 331
AND ph.CreationDate <= 832
AND v.CreationDate >= 555
AND v.CreationDate <= 850
AND u.CreationDate <= 1142

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;