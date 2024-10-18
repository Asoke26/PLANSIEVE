SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 3
AND p.Score >= 4
AND p.CommentCount <= 6
AND u.Views <= 77
AND p.CreationDate >= 344
AND p.CreationDate <= 1424
AND u.CreationDate >= 497
AND u.CreationDate <= 1525

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;