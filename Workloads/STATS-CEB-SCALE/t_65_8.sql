SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= 64
AND p.Score <= 76
AND p.CommentCount <= 37
AND ph.PostHistoryTypeId = 24
AND v.BountyAmount <= 400.0
AND u.Views >= 94
AND c.CreationDate >= 430
AND c.CreationDate <= 1148
AND ph.CreationDate <= 1410
AND v.CreationDate >= 194
AND v.CreationDate <= 1037
AND u.CreationDate <= 826

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;