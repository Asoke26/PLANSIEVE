SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 3
AND p.Score >= 69
AND p.CommentCount <= 37
AND u.Views <= 460
AND p.CreationDate >= 76
AND p.CreationDate <= 463
AND u.CreationDate >= 140
AND u.CreationDate <= 1137

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;