SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE p.AnswerCount <= 21.0
AND p.FavoriteCount >= 66.0
AND pl.LinkTypeId = 1
AND v.VoteTypeId = 2
AND c.CreationDate >= 699
AND c.CreationDate <= 1349
AND v.CreationDate <= 1244
AND b.Date <= 788

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;