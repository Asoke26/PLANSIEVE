SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 1
AND p.Score >= -3
AND p.CommentCount <= 20
AND u.Views <= 221
AND p.CreationDate >= 1148
AND p.CreationDate <= 1532
AND u.CreationDate >= 410
AND u.CreationDate <= 711

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;