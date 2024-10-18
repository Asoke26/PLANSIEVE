SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 30
AND p.ViewCount >= 1195.0
AND p.AnswerCount <= 35.0
AND p.CommentCount <= 33
AND p.FavoriteCount >= 111.0
AND pl.LinkTypeId = 1
AND pl.CreationDate >= 715
AND pl.CreationDate <= 952
AND v.CreationDate >= 70
AND v.CreationDate <= 708
AND b.Date >= 323
AND b.Date <= 815

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;