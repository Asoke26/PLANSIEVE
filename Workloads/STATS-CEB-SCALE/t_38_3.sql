SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 3
AND ph.PostHistoryTypeId = 8
AND u.Reputation >= 213
AND u.Reputation <= 2090
AND u.DownVotes <= 2
AND c.CreationDate >= 738
AND ph.CreationDate >= 671
AND u.CreationDate >= 267
AND u.CreationDate <= 611

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;