SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
users u
WHERE p.CommentCount >= 2
AND p.CommentCount <= 20
AND pl.LinkTypeId = 1
AND u.Reputation >= 198
AND u.Reputation <= 2205
AND u.DownVotes >= 114
AND u.DownVotes <= 143
AND c.CreationDate >= 734
AND c.CreationDate <= 1273
AND ph.CreationDate >= 171

AND pl.RelatedPostId = p.Id
AND u.Id = c.UserId
AND c.PostId = p.Id
AND ph.PostId = p.Id;