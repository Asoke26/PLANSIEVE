SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 18
AND p.ViewCount >= 1891.0
AND p.AnswerCount <= 42.0
AND p.CommentCount <= 19
AND p.FavoriteCount >= 3.0
AND pl.LinkTypeId = 1
AND pl.CreationDate >= 474
AND pl.CreationDate <= 665
AND v.CreationDate >= 908
AND v.CreationDate <= 1021
AND b.Date >= 881
AND b.Date <= 937

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;