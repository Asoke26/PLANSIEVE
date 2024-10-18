SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= 43
AND p.Score <= 124
AND p.CommentCount <= 9
AND ph.PostHistoryTypeId = 6
AND v.BountyAmount <= 500.0
AND u.Views >= 124
AND c.CreationDate >= 441
AND c.CreationDate <= 750
AND ph.CreationDate <= 511
AND v.CreationDate >= 302
AND v.CreationDate <= 1308
AND u.CreationDate <= 811

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;