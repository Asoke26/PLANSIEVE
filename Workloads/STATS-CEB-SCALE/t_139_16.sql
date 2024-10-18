SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 15
AND p.ViewCount >= 2534.0
AND p.AnswerCount <= 35.0
AND p.CommentCount <= 18
AND p.FavoriteCount >= 3.0
AND pl.LinkTypeId = 3
AND pl.CreationDate >= 527
AND pl.CreationDate <= 1210
AND v.CreationDate >= 200
AND v.CreationDate <= 945
AND b.Date >= 1026
AND b.Date <= 1142

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;