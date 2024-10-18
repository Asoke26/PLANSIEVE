SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 3
AND p.Score >= 24
AND p.CommentCount <= 41
AND u.Views <= 2252
AND p.CreationDate >= 742
AND p.CreationDate <= 969
AND u.CreationDate >= 468
AND u.CreationDate <= 1362

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;