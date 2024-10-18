SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= 3
AND p.Score <= 55
AND p.CommentCount <= 30
AND ph.PostHistoryTypeId = 14
AND v.BountyAmount <= 100.0
AND u.Views >= 279
AND c.CreationDate >= 177
AND c.CreationDate <= 393
AND ph.CreationDate <= 1162
AND v.CreationDate >= 287
AND v.CreationDate <= 1040
AND u.CreationDate <= 616

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;