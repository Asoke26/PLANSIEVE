SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= -5
AND p.Score <= 0
AND p.CommentCount <= 16
AND ph.PostHistoryTypeId = 38
AND v.BountyAmount <= 125.0
AND u.Views >= 328
AND c.CreationDate >= 118
AND c.CreationDate <= 749
AND ph.CreationDate <= 328
AND v.CreationDate >= 471
AND v.CreationDate <= 1148
AND u.CreationDate <= 1536

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;