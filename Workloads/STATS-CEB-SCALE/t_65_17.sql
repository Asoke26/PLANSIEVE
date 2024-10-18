SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= -3
AND p.Score <= 123
AND p.CommentCount <= 35
AND ph.PostHistoryTypeId = 24
AND v.BountyAmount <= 300.0
AND u.Views >= 2252
AND c.CreationDate >= 757
AND c.CreationDate <= 905
AND ph.CreationDate <= 582
AND v.CreationDate >= 105
AND v.CreationDate <= 1513
AND u.CreationDate <= 1207

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;