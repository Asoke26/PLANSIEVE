SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 14
AND p.ViewCount >= 1848.0
AND p.AnswerCount <= 42.0
AND p.CommentCount <= 23
AND p.FavoriteCount >= 51.0
AND pl.LinkTypeId = 3
AND pl.CreationDate >= 491
AND pl.CreationDate <= 1518
AND v.CreationDate >= 774
AND v.CreationDate <= 850
AND b.Date >= 706
AND b.Date <= 1510

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;