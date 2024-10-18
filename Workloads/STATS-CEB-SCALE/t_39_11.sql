SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 1
AND p.Score >= 7
AND p.CommentCount <= 34
AND u.Views <= 47
AND p.CreationDate >= 929
AND p.CreationDate <= 1085
AND u.CreationDate >= 979
AND u.CreationDate <= 1110

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;