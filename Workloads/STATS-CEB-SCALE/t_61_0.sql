SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE c.Score = 3
AND p.ViewCount <= 3380.0
AND p.CommentCount <= 1
AND p.FavoriteCount >= 2.0
AND p.FavoriteCount <= 30.0
AND u.UpVotes >= 13
AND p.CreationDate >= 626

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;