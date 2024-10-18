SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= 30
AND p.Score <= 121
AND p.CommentCount <= 13
AND ph.PostHistoryTypeId = 25
AND v.BountyAmount <= 125.0
AND u.Views >= 265
AND c.CreationDate >= 714
AND c.CreationDate <= 963
AND ph.CreationDate <= 803
AND v.CreationDate >= 698
AND v.CreationDate <= 1377
AND u.CreationDate <= 1038

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;