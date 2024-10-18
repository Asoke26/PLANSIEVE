SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
users u
WHERE p.CommentCount >= 5
AND p.CommentCount <= 32
AND pl.LinkTypeId = 3
AND u.Reputation >= 215
AND u.Reputation <= 1329
AND u.DownVotes >= 21
AND u.DownVotes <= 60
AND c.CreationDate >= 270
AND c.CreationDate <= 1165
AND ph.CreationDate >= 1286

AND pl.RelatedPostId = p.Id
AND u.Id = c.UserId
AND c.PostId = p.Id
AND ph.PostId = p.Id;