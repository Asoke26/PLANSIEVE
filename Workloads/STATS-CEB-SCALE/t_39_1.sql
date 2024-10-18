SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 3
AND p.Score >= -1
AND p.CommentCount <= 27
AND u.Views <= 255
AND p.CreationDate >= 1044
AND p.CreationDate <= 1528
AND u.CreationDate >= 232
AND u.CreationDate <= 415

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;