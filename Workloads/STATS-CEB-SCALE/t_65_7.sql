SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= 2
AND p.Score <= 49
AND p.CommentCount <= 30
AND ph.PostHistoryTypeId = 1
AND v.BountyAmount <= 50.0
AND u.Views >= 374
AND c.CreationDate >= 811
AND c.CreationDate <= 1058
AND ph.CreationDate <= 183
AND v.CreationDate >= 1043
AND v.CreationDate <= 1519
AND u.CreationDate <= 510

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;