SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE c.Score = 7
AND p.ViewCount <= 4163.0
AND p.CommentCount <= 5
AND p.FavoriteCount >= 15.0
AND p.FavoriteCount <= 51.0
AND u.UpVotes >= 126
AND p.CreationDate >= 798

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;