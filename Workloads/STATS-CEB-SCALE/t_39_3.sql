SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 3
AND p.Score >= -6
AND p.CommentCount <= 28
AND u.Views <= 460
AND p.CreationDate >= 591
AND p.CreationDate <= 776
AND u.CreationDate >= 748
AND u.CreationDate <= 1048

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;