SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE c.Score = 2
AND p.ViewCount <= 4463.0
AND p.CommentCount <= 25
AND p.FavoriteCount >= 23.0
AND p.FavoriteCount <= 27.0
AND u.UpVotes >= 65
AND p.CreationDate >= 102

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;