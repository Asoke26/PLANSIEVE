SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE p.AnswerCount <= 56.0
AND p.FavoriteCount >= 30.0
AND pl.LinkTypeId = 1
AND v.VoteTypeId = 8
AND c.CreationDate >= 133
AND c.CreationDate <= 272
AND v.CreationDate <= 926
AND b.Date <= 1016

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;