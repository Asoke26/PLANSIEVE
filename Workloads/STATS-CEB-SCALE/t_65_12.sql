SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= 26
AND p.Score <= 62
AND p.CommentCount <= 9
AND ph.PostHistoryTypeId = 19
AND v.BountyAmount <= 100.0
AND u.Views >= 9
AND c.CreationDate >= 150
AND c.CreationDate <= 1043
AND ph.CreationDate <= 1455
AND v.CreationDate >= 26
AND v.CreationDate <= 445
AND u.CreationDate <= 29

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;