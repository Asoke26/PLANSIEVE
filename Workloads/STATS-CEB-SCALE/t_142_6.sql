SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE p.AnswerCount <= 56.0
AND p.FavoriteCount >= 15.0
AND pl.LinkTypeId = 3
AND v.VoteTypeId = 16
AND c.CreationDate >= 418
AND c.CreationDate <= 1370
AND v.CreationDate <= 1073
AND b.Date <= 1535

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;