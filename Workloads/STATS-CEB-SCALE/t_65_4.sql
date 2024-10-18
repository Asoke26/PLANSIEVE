SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= -7
AND p.Score <= 66
AND p.CommentCount <= 33
AND ph.PostHistoryTypeId = 14
AND v.BountyAmount <= 200.0
AND u.Views >= 76
AND c.CreationDate >= 352
AND c.CreationDate <= 1310
AND ph.CreationDate <= 947
AND v.CreationDate >= 161
AND v.CreationDate <= 385
AND u.CreationDate <= 825

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;