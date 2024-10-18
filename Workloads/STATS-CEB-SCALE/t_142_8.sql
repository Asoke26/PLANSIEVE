SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE p.AnswerCount <= 4.0
AND p.FavoriteCount >= 43.0
AND pl.LinkTypeId = 3
AND v.VoteTypeId = 2
AND c.CreationDate >= 777
AND c.CreationDate <= 1414
AND v.CreationDate <= 266
AND b.Date <= 1010

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;