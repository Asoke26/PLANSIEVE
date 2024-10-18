SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= 35
AND p.Score <= 71
AND p.CommentCount <= 45
AND ph.PostHistoryTypeId = 3
AND v.BountyAmount <= 400.0
AND u.Views >= 445
AND c.CreationDate >= 613
AND c.CreationDate <= 1152
AND ph.CreationDate <= 414
AND v.CreationDate >= 92
AND v.CreationDate <= 1452
AND u.CreationDate <= 1134

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;