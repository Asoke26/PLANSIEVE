SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
users u
WHERE p.CommentCount >= 3
AND p.CommentCount <= 31
AND pl.LinkTypeId = 3
AND u.Reputation >= 506
AND u.Reputation <= 1766
AND u.DownVotes >= 10
AND u.DownVotes <= 31
AND c.CreationDate >= 34
AND c.CreationDate <= 1186
AND ph.CreationDate >= 1018

AND pl.RelatedPostId = p.Id
AND u.Id = c.UserId
AND c.PostId = p.Id
AND ph.PostId = p.Id;