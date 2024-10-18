SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 23
AND p.ViewCount >= 4834.0
AND p.AnswerCount <= 8.0
AND p.CommentCount <= 45
AND p.FavoriteCount >= 2.0
AND pl.LinkTypeId = 1
AND pl.CreationDate >= 537
AND pl.CreationDate <= 1238
AND v.CreationDate >= 837
AND v.CreationDate <= 1472
AND b.Date >= 939
AND b.Date <= 1433

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;