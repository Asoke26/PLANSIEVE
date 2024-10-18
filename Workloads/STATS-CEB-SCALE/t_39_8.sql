SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 3
AND p.Score >= 8
AND p.CommentCount <= 31
AND u.Views <= 67
AND p.CreationDate >= 149
AND p.CreationDate <= 1365
AND u.CreationDate >= 636
AND u.CreationDate <= 1335

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;