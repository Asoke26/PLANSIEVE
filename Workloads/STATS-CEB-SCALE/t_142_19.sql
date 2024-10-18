SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE p.AnswerCount <= 15.0
AND p.FavoriteCount >= 6.0
AND pl.LinkTypeId = 3
AND v.VoteTypeId = 5
AND c.CreationDate >= 808
AND c.CreationDate <= 1223
AND v.CreationDate <= 387
AND b.Date <= 433

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;