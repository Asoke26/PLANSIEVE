SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE c.Score = 8
AND p.ViewCount <= 5745.0
AND p.CommentCount <= 41
AND p.FavoriteCount >= 1.0
AND p.FavoriteCount <= 78.0
AND u.UpVotes >= 89
AND p.CreationDate >= 58

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;