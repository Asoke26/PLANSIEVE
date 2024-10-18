SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= 22
AND p.Score <= 85
AND p.CommentCount <= 21
AND ph.PostHistoryTypeId = 1
AND v.BountyAmount <= 75.0
AND u.Views >= 140
AND c.CreationDate >= 64
AND c.CreationDate <= 385
AND ph.CreationDate <= 1076
AND v.CreationDate >= 416
AND v.CreationDate <= 911
AND u.CreationDate <= 736

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;