SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 1
AND p.Score >= 52
AND p.CommentCount <= 24
AND u.Views <= 356
AND p.CreationDate >= 67
AND p.CreationDate <= 1185
AND u.CreationDate >= 409
AND u.CreationDate <= 1502

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;