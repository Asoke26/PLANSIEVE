SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE p.AnswerCount <= 4.0
AND p.FavoriteCount >= 33.0
AND pl.LinkTypeId = 1
AND v.VoteTypeId = 16
AND c.CreationDate >= 210
AND c.CreationDate <= 808
AND v.CreationDate <= 1095
AND b.Date <= 1042

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;