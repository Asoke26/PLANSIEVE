SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
users u
WHERE p.CommentCount >= 1
AND p.CommentCount <= 30
AND pl.LinkTypeId = 1
AND u.Reputation >= 204
AND u.Reputation <= 2196
AND u.DownVotes >= 9
AND u.DownVotes <= 17
AND c.CreationDate >= 165
AND c.CreationDate <= 1287
AND ph.CreationDate >= 120

AND pl.RelatedPostId = p.Id
AND u.Id = c.UserId
AND c.PostId = p.Id
AND ph.PostId = p.Id;