SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 3
AND p.Score >= -5
AND p.CommentCount <= 10
AND u.Views <= 386
AND p.CreationDate >= 1232
AND p.CreationDate <= 1292
AND u.CreationDate >= 110
AND u.CreationDate <= 831

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;