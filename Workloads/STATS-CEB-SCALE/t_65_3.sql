SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.Score >= 40
AND p.Score <= 59
AND p.CommentCount <= 28
AND ph.PostHistoryTypeId = 4
AND v.BountyAmount <= 50.0
AND u.Views >= 270
AND c.CreationDate >= 457
AND c.CreationDate <= 895
AND ph.CreationDate <= 570
AND v.CreationDate >= 1122
AND v.CreationDate <= 1464
AND u.CreationDate <= 1441

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;