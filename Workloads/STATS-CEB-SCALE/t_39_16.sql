SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 1
AND p.Score >= 0
AND p.CommentCount <= 12
AND u.Views <= 9
AND p.CreationDate >= 467
AND p.CreationDate <= 752
AND u.CreationDate >= 292
AND u.CreationDate <= 962

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;