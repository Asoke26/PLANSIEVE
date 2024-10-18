SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 7
AND p.ViewCount >= 3783.0
AND p.AnswerCount <= 26.0
AND p.CommentCount <= 45
AND p.FavoriteCount >= 43.0
AND pl.LinkTypeId = 1
AND pl.CreationDate >= 444
AND pl.CreationDate <= 1233
AND v.CreationDate >= 341
AND v.CreationDate <= 410
AND b.Date >= 240
AND b.Date <= 1179

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;