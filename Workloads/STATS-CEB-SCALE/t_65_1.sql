SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= -7
AND p.Score <= 20
AND p.CommentCount <= 23
AND ph.PostHistoryTypeId = 3
AND v.BountyAmount <= 500.0
AND u.Views >= 328
AND c.CreationDate >= 591
AND c.CreationDate <= 1518
AND ph.CreationDate <= 207
AND v.CreationDate >= 978
AND v.CreationDate <= 1461
AND u.CreationDate <= 487

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;