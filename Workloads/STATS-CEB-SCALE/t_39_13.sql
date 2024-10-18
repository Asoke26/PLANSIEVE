SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 1
AND p.Score >= -5
AND p.CommentCount <= 4
AND u.Views <= 95
AND p.CreationDate >= 552
AND p.CreationDate <= 723
AND u.CreationDate >= 72
AND u.CreationDate <= 435

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;