SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= 10
AND p.Score <= 67
AND p.CommentCount <= 9
AND ph.PostHistoryTypeId = 4
AND v.BountyAmount <= 350.0
AND u.Views >= 589
AND c.CreationDate >= 254
AND c.CreationDate <= 1394
AND ph.CreationDate <= 630
AND v.CreationDate >= 1027
AND v.CreationDate <= 1505
AND u.CreationDate <= 305

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;