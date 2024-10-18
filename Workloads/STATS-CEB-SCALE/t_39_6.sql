SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 3
AND p.Score >= 4
AND p.CommentCount <= 45
AND u.Views <= 151
AND p.CreationDate >= 868
AND p.CreationDate <= 1321
AND u.CreationDate >= 223
AND u.CreationDate <= 1087

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;