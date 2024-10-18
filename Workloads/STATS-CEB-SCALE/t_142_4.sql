SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE p.AnswerCount <= 10.0
AND p.FavoriteCount >= 69.0
AND pl.LinkTypeId = 3
AND v.VoteTypeId = 3
AND c.CreationDate >= 399
AND c.CreationDate <= 1190
AND v.CreationDate <= 1155
AND b.Date <= 1471

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;