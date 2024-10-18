SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 1
AND p.Score >= -1
AND p.CommentCount <= 9
AND u.Views <= 138
AND p.CreationDate >= 334
AND p.CreationDate <= 767
AND u.CreationDate >= 541
AND u.CreationDate <= 1543

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;