SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= -4
AND p.Score <= 77
AND p.CommentCount <= 2
AND ph.PostHistoryTypeId = 2
AND v.BountyAmount <= 500.0
AND u.Views >= 93
AND c.CreationDate >= 75
AND c.CreationDate <= 1148
AND ph.CreationDate <= 737
AND v.CreationDate >= 207
AND v.CreationDate <= 895
AND u.CreationDate <= 163

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;